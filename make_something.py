import os

def touch(file):
    with open(file, 'w'):
        pass

def write_python_packages():
    touch(os.path.join('out', 'a.pex'))
    touch(os.path.join('out', 'a.zip'))
    touch(os.path.join('out', 'a.gz'))
    touch(os.path.join('out', 'a.whl'))
    touch(os.path.join('out', 'a.pex'))

def write_installers():
    touch(os.path.join('out', 'installer', 'a.exe'))

if __name__ == "__main__":
    write_python_packages()
    write_installers()