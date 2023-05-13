from setuptools import setup, find_packages

setup(
    name='pizza',
    version='0.1.0',
    description='This is a website',
    author='JGroup d',
    author_email='ssekyanzijoel0@gmail.com',
    packages=find_packages(),
    install_requires=[
        'numpy',
        'pandas',
        'matplotlib'
    ],
    entry_points={
        'console_scripts': [
            'mycommand=pizza.cli:main'
        ]
    }
)
