from my_utils.os_utils import subprocess_execute

def test_subprocess_execute():
    assert subprocess_execute('echo "hello"',print_info=False)=='"hello"\r\n'