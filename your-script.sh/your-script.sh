#!/usr/bin/env bash

## BOOTSTRAP ##
source "$( cd "${BASH_SOURCE[0]%/*}" && pwd )/lib/oo-bootstrap.sh"

## MAIN ##
# import util/log util/exception util/tryCatch util/namedParameters util/class

## YOUR CODE GOES HERE ##
#

import util/exception util/tryCatch util/log util/test

describe 'Try Catch'
  it 'should throw a "test exception"'
  try
    try {
      e="test exception" throw
    } catch {
      [[ "${__EXCEPTION__[1]}" == "test exception" ]]
    }
  expectPass

  it 'should throw a general exception inside of a catch'
  try {
    try {
      false
    } catch {
      e="we throw again inside of a catch" throw
      echo this should not be displayed
    }
    echo this should not be displayed
  }
  expectFail

summary

