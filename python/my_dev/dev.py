from my_utils.os_utils import subprocess_execute

def hello_world(msg='Hello!'):
    print(subprocess_execute(f'echo {msg}'))