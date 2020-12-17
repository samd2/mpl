# Use, modification, and distribution are
# subject to the Boost Software License, Version 1.0. (See accompanying
# file LICENSE.txt)
#
# Copyright Rene Rivera 2020.

# Configuration for https://cloud.drone.io/.

# For Drone CI we use the Starlark scripting language to reduce duplication.
# As the yaml syntax for Drone CI is rather limited.

def main(ctx):
  return [
  linux_cxx("TOOLSET=gcc-4.4 CXXSTD=98,0x Job 0", "g++", packages="g++-4.4", buildtype="boost", environment={'TOOLSET': 'gcc-4.4', 'CXXSTD': '98,0x', 'DRONE_JOB_UUID': 'b6589fc6ab'}),
  linux_cxx("TOOLSET=gcc-4.6 CXXSTD=03,0x Job 1", "g++", packages="g++-4.6", buildtype="boost", environment={'TOOLSET': 'gcc-4.6', 'CXXSTD': '03,0x', 'DRONE_JOB_UUID': '356a192b79'}),
  linux_cxx("TOOLSET=gcc-4.8 CXXSTD=03,11 Job 2", "g++", packages="g++-4.8", buildtype="boost", environment={'TOOLSET': 'gcc-4.8', 'CXXSTD': '03,11', 'DRONE_JOB_UUID': 'da4b9237ba'}),
  linux_cxx("TOOLSET=gcc-5 CXXSTD=03,11 Job 3", "g++", packages="g++-5", buildtype="boost", environment={'TOOLSET': 'gcc-5', 'CXXSTD': '03,11', 'DRONE_JOB_UUID': '77de68daec'}),
  linux_cxx("TOOLSET=gcc-6 CXXSTD=03,11,14 Job 4", "g++", packages="g++-6", buildtype="boost", environment={'TOOLSET': 'gcc-6', 'CXXSTD': '03,11,14', 'DRONE_JOB_UUID': '1b64538924'}),
  linux_cxx("TOOLSET=gcc-7 CXXSTD=03,11,14,17 Job 5", "g++", packages="g++-7", buildtype="boost", environment={'TOOLSET': 'gcc-7', 'CXXSTD': '03,11,14,17', 'DRONE_JOB_UUID': 'ac3478d69a'}),
  linux_cxx("TOOLSET=gcc-8 CXXSTD=03,11,14,17,2a Job 6", "g++", packages="g++-8", buildtype="boost", environment={'TOOLSET': 'gcc-8', 'CXXSTD': '03,11,14,17,2a', 'DRONE_JOB_UUID': 'c1dfd96eea'}),
  linux_cxx("TOOLSET=clang-3.4 CXXSTD=03,11 Job 7", "g++", packages="clang-3.4", llvm_os="trusty", llvm_ver="3.4", buildtype="boost", environment={'TOOLSET': 'clang-3.4', 'CXXSTD': '03,11', 'DRONE_JOB_UUID': '902ba3cda1'}),
  linux_cxx("TOOLSET=clang-3.8 CXXSTD=03,11,14 Job 8", "g++", packages="clang-3.8 libstdc++-6-dev", llvm_os="trusty", llvm_ver="3.8", buildtype="boost", environment={'TOOLSET': 'clang-3.8', 'CXXSTD': '03,11,14', 'DRONE_JOB_UUID': 'fe5dbbcea5'}),
  linux_cxx("TOOLSET=clang-4.0 CXXSTD=03,11,14 Job 9", "g++", packages="clang-4.0 libstdc++-6-dev", llvm_os="trusty", llvm_ver="4.0", buildtype="boost", environment={'TOOLSET': 'clang-4.0', 'CXXSTD': '03,11,14', 'DRONE_JOB_UUID': '0ade7c2cf9'}),
  linux_cxx("TOOLSET=clang-5.0 CXXSTD=03,11,14,17 Job 10", "g++", packages="clang-5.0 libstdc++-7-dev", llvm_os="trusty", llvm_ver="5.0", buildtype="boost", environment={'TOOLSET': 'clang-5.0', 'CXXSTD': '03,11,14,17', 'DRONE_JOB_UUID': 'b1d5781111'}),
  linux_cxx("TOOLSET=clang-6.0 CXXSTD=03,11,14,17,2a Job 11", "g++", packages="clang-6.0 libc++-dev libstdc++-8-dev valgrind", llvm_os="trusty", llvm_ver="6.0", buildtype="boost", environment={'TOOLSET': 'clang-6.0', 'CXXSTD': '03,11,14,17,2a', 'DRONE_JOB_UUID': '17ba079149'}),
  linux_cxx("TOOLSET=clang-6.0 CXXSTD=03,11,14,17,2a Job 12", "g++", packages="clang-6.0 libc++-dev libstdc++-8-dev valgrind", llvm_os="trusty", llvm_ver="6.0", buildtype="boost", environment={'TOOLSET': 'clang-6.0', 'CXXSTD': '03,11,14,17,2a', 'CXXFLAGS': '-stdlib=libc++', 'DRONE_JOB_UUID': '7b52009b64'}),
  linux_cxx("COMMENT=codecov.io TOOLSET=gcc-7 DEFINES=def Job 13", "g++", packages="g++-7", buildtype="6d5a3a255d-bbb3de2b00", environment={'COMMENT': 'codecov.io', 'TOOLSET': 'gcc-7', 'DEFINES': 'define=BOOST_NO_STRESS_TEST=1', 'DRONE_JOB_UUID': 'bd307a3ec3'}),
  linux_cxx("COMMENT=cppcheck Job 14", "g++", packages="", buildtype="6d5a3a255d-ed45733e6c", environment={'COMMENT': 'cppcheck', 'DRONE_JOB_UUID': 'fa35e19212'}),
  linux_cxx("COMMENT=ubsan B2_VARIANT=variant=debug TOOLSE Job 15", "g++", packages="g++-8", buildtype="boost", environment={'COMMENT': 'ubsan', 'B2_VARIANT': 'variant=debug', 'TOOLSET': 'gcc-8', 'CXXSTD': '03,11,14,17,2a', 'DEFINES': 'define=BOOST_NO_STRESS_TEST=1', 'CXXFLAGS': 'cxxflags=-fno-omit-frame-pointer cxxflags=-fsanitize=undefined cxxflags=-fno-sanitize-recover=undefined', 'LINKFLAGS': 'linkflags=-fsanitize=undefined linkflags=-fno-sanitize-recover=undefined linkflags=-fuse-ld=gold', 'UBSAN_OPTIONS': 'print_stacktrace=1', 'DRONE_JOB_UUID': 'f1abd67035'}),
  linux_cxx("COMMENT=valgrind TOOLSET=clang-6.0 CXXSTD=03, Job 16", "g++", packages="clang-6.0 libc++-dev libstdc++-8-dev valgrind", llvm_os="trusty", llvm_ver="6.0", buildtype="boost", environment={'COMMENT': 'valgrind', 'TOOLSET': 'clang-6.0', 'CXXSTD': '03,11,14,17,2a', 'DEFINES': 'define=BOOST_NO_STRESS_TEST=1', 'B2_VARIANT': 'variant=debug', 'TESTFLAGS': 'testing.launcher=valgrind', 'VALGRIND_OPTS': '--error-exitcode=1', 'DRONE_JOB_UUID': '1574bddb75'}),
  linux_cxx("COMMENT=Coverity Scan TOOLSET=gcc-7 Job 17", "g++", packages="g++-7", buildtype="6d5a3a255d-cce9827eb5", environment={'COMMENT': 'Coverity Scan', 'TOOLSET': 'gcc-7', 'DRONE_JOB_UUID': '0716d9708d'}),
  ]

# Generate pipeline for Linux platform compilers.
def linux_cxx(name, cxx, cxxflags="", packages="", llvm_os="", llvm_ver="", arch="amd64", image="cppalliance/droneubuntu1404:1", buildtype="boost", environment={}, stepenvironment={}, jobuuid="", privileged=False):
  environment_global = {
      "TRAVIS_BUILD_DIR": "/drone/src",

      "CXX": cxx,
      "CXXFLAGS": cxxflags,
      "PACKAGES": packages,
      "LLVM_OS": llvm_os,
      "LLVM_VER": llvm_ver
      }
  environment_global.update({'B2_VARIANT': 'variant=release,debug'})
  environment_current=environment_global
  environment_current.update(environment)

  return {
    "name": "Linux %s" % name,
    "kind": "pipeline",
    "type": "docker",
    "trigger": { "branch": [ "master","develop", "drone*", "bugfix/*", "feature/*", "fix/*", "pr/*" ] },
    "platform": {
      "os": "linux",
      "arch": arch
    },
    # Create env vars per generation arguments.
    "environment": environment_current,
    "steps": [
      {
        "name": "Everything",
        "image": image,
        "privileged" : privileged,
        "environment": stepenvironment,
        "commands": [

          "echo '==================================> SETUP'",
          "uname -a",
          # Moved to Docker
          # "apt-get -o Acquire::Retries=3 update && DEBIAN_FRONTEND=noninteractive apt-get -y install tzdata && apt-get -o Acquire::Retries=3 install -y sudo software-properties-common wget curl apt-transport-https git make cmake apt-file sudo unzip libssl-dev build-essential autotools-dev autoconf libc++-helpers automake g++",
          # "for i in {1..3}; do apt-add-repository ppa:git-core/ppa && break || sleep 2; done",
          # "apt-get -o Acquire::Retries=3 update && apt-get -o Acquire::Retries=3 -y install git",
          "echo '==================================> PACKAGES'",
          "./.drone/linux-cxx-install.sh",

          "echo '==================================> INSTALL AND COMPILE'",
          "./.drone/%s.sh" % buildtype,
        ]
      }
    ]
  }

def windows_cxx(name, cxx="g++", cxxflags="", packages="", llvm_os="", llvm_ver="", arch="amd64", image="cppalliance/dronevs2019", buildtype="boost", environment={}, stepenvironment={}, privileged=False):
  environment_global = {
      "CXX": cxx,
      "CXXFLAGS": cxxflags,
      "PACKAGES": packages,
      "LLVM_OS": llvm_os,
      "LLVM_VER": llvm_ver
    }
  environment_global.update({'B2_VARIANT': 'variant=release,debug'})
  environment_current=environment_global
  environment_current.update(environment)

  return {
    "name": "Windows %s" % name,
    "kind": "pipeline",
    "type": "docker",
    "trigger": { "branch": [ "master","develop", "drone*", "bugfix/*", "feature/*", "fix/*", "pr/*" ] },
    "platform": {
      "os": "windows",
      "arch": arch
    },
    # Create env vars per generation arguments.
    "environment": environment_current,
    "steps": [
      {
        "name": "Everything",
        "image": image,
        "privileged": privileged,
        "environment": stepenvironment,
        "commands": [
          "echo '==================================> SETUP'",
          "echo '==================================> PACKAGES'",
          "bash.exe ./.drone/windows-msvc-install.sh",

          "echo '==================================> INSTALL AND COMPILE'",
          "bash.exe ./.drone/%s.sh" % buildtype,
        ]
      }
    ]
  }
def osx_cxx(name, cxx, cxxflags="", packages="", llvm_os="", llvm_ver="", arch="amd64", image="cppalliance/droneubuntu1404:1", osx_version="", xcode_version="", buildtype="boost", environment={}, stepenvironment={}, jobuuid="", privileged=False):
  environment_global = {
      # "TRAVIS_BUILD_DIR": "/drone/src",
      "CXX": cxx,
      "CXXFLAGS": cxxflags,
      "PACKAGES": packages,
      "LLVM_OS": llvm_os,
      "LLVM_VER": llvm_ver
      }
  environment_global.update({'B2_VARIANT': 'variant=release,debug'})
  environment_current=environment_global
  environment_current.update(environment)

  # exec runner only has step-level environment variables:
  environment_step = environment_current
  environment_step.update(stepenvironment)

  if xcode_version:
    environment_step["DEVELOPER_DIR"] = "/Applications/Xcode-" + xcode_version +  ".app/Contents/Developer"
    if not osx_version:
        if xcode_version[0:2] in [ "12","11","10"]:
            osx_version="catalina"
        elif xcode_version[0:1] in [ "9","8","7","6"]:
            osx_version="highsierra"
  else:
    osx_version="catalina"

  return {
    "name": "OSX %s" % name,
    "kind": "pipeline",
    "type": "exec",
    "trigger": { "branch": [ "master","develop", "drone*", "bugfix/*", "feature/*", "fix/*", "pr/*" ] },
    "platform": {
      "os": "darwin",
      "arch": arch
    },
    "node": {
      "os": osx_version
      },
    "steps": [
      {
        "name": "Everything",
        # "image": image,
        "privileged" : privileged,
        "environment": environment_step,
        "commands": [

          "echo '==================================> SETUP'",
          "uname -a",
          # "apt-get -o Acquire::Retries=3 update && apt-get -o Acquire::Retries=3 -y install git",
          "echo '==================================> PACKAGES'",
          "./.drone/osx-cxx-install.sh",

          "echo '==================================> INSTALL AND COMPILE'",
          "./.drone/%s.sh" % buildtype,
        ]
      }
    ]
  }

def freebsd_cxx(name, cxx, cxxflags="", packages="", llvm_os="", llvm_ver="", arch="amd64", image="cppalliance/droneubuntu1404:1", buildtype="boost", environment={}, stepenvironment={}, jobuuid="", privileged=False):
    pass
