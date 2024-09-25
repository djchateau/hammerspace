#!/usr/bin/env bash

# Setup HackTheBox machine directory for Obsidian vault...

BASE_DIR="../Machines"
TEMPLATE_DIR="../Templates"
MACHINE_STATE="Retired"

case $2 in

	Retired | R)
		MACHINE_STATE="Retired"
		;;

	Active | A)
		MACHINE_STATE="Active"
		;;

	Seasonal | S)
		MACHINE_STATE="Seasonal"
		;;
	*)
		MACHINE_STATE="Retired"
	    ;;
esac

BASE_DIR=$BASE_DIR/$MACHINE_STATE
MACHINE_NAME="$1"
MACHINE_DIR="$BASE_DIR/$MACHINE_NAME"

# Creating our directories.

SUB_DIRS=("Exploits" "Loot" "Scans" "Scripts" "Targets" "Papers")

for DIR in ${SUB_DIRS[@]}; do
	mkdir -p "$MACHINE_DIR/$DIR"
done

# Initialize machine template.

touch "$MACHINE_DIR/$MACHINE_NAME.md"

# cat "$TEMPLATE_DIR/Machines/$MACHINE_STATE/Machine.md" "$TEMPLATE_DIR/Enumeration Table.md" >> "$MACHINE_DIR/$MACHINE_NAME.md"
