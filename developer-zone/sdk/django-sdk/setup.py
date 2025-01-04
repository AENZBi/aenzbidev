from setuptools import setup, find_packages

setup(
    name='aenzbi-django-sdk',
    version='0.1.0',
    packages=find_packages(),
    install_requires=['requests'],
    description='Aenzbi Django SDK for easy API integration',
    author='Aenzbi Team',
    license='MIT'
)
