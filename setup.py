import setuptools

setuptools.setup(
    name='mac-appify',
    install_requires=open('requirements.txt').read().splitlines(),
    packages=setuptools.find_packages(),
    scripts=['scripts/appify']
)
