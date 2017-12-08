def touch(file):
    with open(file, 'a') as f:
        f.write('something...')

def write_python_packages():
    touch(os.path.join('out', 'dist', 'a.pex'))
    touch(os.path.join('out', 'dist', 'a.zip'))
    touch(os.path.join('out', 'dist', 'a.gz'))
    touch(os.path.join('out', 'dist', 'a.whl'))
    touch(os.path.join('out', 'dist', 'a.pex'))

def write_installers():
    touch(os.path.join('out', 'installer', 'a.exe'))

if __name__ == "__main__":
    write_python_packages()
    write_installers()