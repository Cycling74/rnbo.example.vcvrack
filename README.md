# RNBO VCV Rack Export Example

Use RNBO C++ export to make VCV Rack v2 modules.

Note: Currently only audio effect (audio inlets/outlets only) exports have been tested, although
extending further should be possible with a little effort.


## Building

- Clone this repository.
- At the same level of this repository, extract a download of the appropriate version of the Rack
  SDK to match your OS and current Rack version. https://vcvrack.com/downloads/
    - Alternatively, install the SDK wherever you'd like, and `export RACK_SDK=<install_dir>` before
      running any build commands later.
- Install the build dependencies specified at
  https://vcvrack.com/manual/Building#Setting-up-your-development-environment
    - e.g. Mac: install packages with brew, Windows: install MSYS2 and install packages
- Export your RNBO patch to the rnbo-export directory. Currently, the exported code must be named `rnbo_source.cpp`, so make sure 
  that in the RNBO export sidebar, the _Export Name_ field is set correctly.
- Run `make dist` to create a distributable package of your plugin, or install directly with `make
  install`.
