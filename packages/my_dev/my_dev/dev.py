from my_utils.os_utils import subprocess_execute

def hello_world(msg='Hey!'):
    print(subprocess_execute(f'echo {msg}'))