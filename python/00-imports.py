import glob
import os
import re

try:
    import numpy as np
except ImportError:
    print("No numpy")

try:
    import pandas as pd
except ImportError:
    print("No pandas")

try:
    import matplotlib.pyplot as plt
    from matplotlib.pyplot import imshow as imsh
    import seaborn as sns
except ImportError:
    print("No matplotlib or seaborn")

try:
    import tensorflow as tf
except ImportError:
    print("No tensorflow")

try:
    import skimage
    import skimage.io
    import scipy.ndimage as ndi
except ImportError:
    print("No imaging libs")
