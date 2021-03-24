from flask import Flask
import os

#import learning_app as la
from .learning_app import setup

app = Flask(__name__)
app.secret_key = b'mFf44Vdm4po3CaqE,.l%mfer4VV?kk481+mmoquecmioal'
app.logger.info(os.getcwd())
setup(app)
