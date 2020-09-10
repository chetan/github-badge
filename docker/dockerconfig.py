# coding: utf-8

import os
from .default import *

DEBUG = True

GITHUB_API_AUTH = {
    'type': 'basic',
    'username': os.getenv("GITHUB_USER"),
    'password': os.getenv("GITHUB_PASS"),
}
