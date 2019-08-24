.PHONE: all
all: help

.PHONY: help
help:
	# -----------------------------------------------------------------------------
	# Processor for data-oasis-ene-wind-solar-summary
	#
	# Targets:
	#
	#     proc    : invoke targets [new,down,injest,save,publish]
	#     down    : download all (absent) resources   : 20_down.py 
	#     injest  : injest resources into sqlite db   : 30_inje.py
	#     save    : persist data to store (git)       : 40_save.py
	#
	# Created by:
	# [Todd Greenwood-Geer] <pub+github@zwrob.com>
	# [Enviro Software Solutions, LLC]
	# -----------------------------------------------------------------------------

# -----------------------------------------------------------------------------
# TARGETS
# -----------------------------------------------------------------------------
.PHONY: setup
setup:  
	pipenv install requests

.PHONY: proc
proc:  down unzip injest save

.PHONY: down
down:  
	src/10_down.py

.PHONY: unzip
unzip:  
	src/20_unzp.py

.PHONY: injest
injest:  
	src/30_inse.py

.PHONY: save
save:  
	src/40_save.sh
