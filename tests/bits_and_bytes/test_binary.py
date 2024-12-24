"""
 ===================================================================================
    Unlicensed Software.
    This software is free to use, modify, and distribute.
    No warranty is provided.

 ===================================================================================
    Project:                  Practice
    Programmer(s):            Lane Taylor

    Module Description
    ==================
    Contains functionality for manipulating binary numbers.

 ===================================================================================
"""
from practice.bits_and_bytes.binary import copycat_function


def test_copycat_function() -> None:
    '''
    Tests the copycat_function (only one case)
    '''
    assert copycat_function('hello world') == 'hello world'
