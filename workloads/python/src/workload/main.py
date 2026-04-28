from k8s_agent_sandbox import SandboxClient
from k8s_agent_sandbox.models import SandboxLocalTunnelConnectionConfig


def main():
    # Automatically tunnels to svc/sandbox-router-svc
    client = SandboxClient(connection_config=SandboxLocalTunnelConnectionConfig())

    sandbox = client.create_sandbox(
        template="python-sandbox-template", namespace="default"
    )
    try:
        print(sandbox.commands.run("echo 'Hello from Local!'").stdout)

        # added by me
        print(
            sandbox.commands.run(
                'python -c "import platform; print(platform.platform())"'
            ).stdout
        )
        print(sandbox.commands.run("ls -lah").stdout)
        print(sandbox.commands.run("pwd").stdout)
        print(sandbox.commands.run("apt list --installed").stdout)
    finally:
        sandbox.terminate()


if __name__ == "__main__":
    main()
