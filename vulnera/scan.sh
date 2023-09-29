#!/bin/bash

# parse parameters
for (( i=1; i<=$#; i++ )); do
	arg=$((i+1))
	case "${!i}" in
	-t)	target=${!arg}
		out="$target.xml"
		;;

	--name)
		out="${!arg}.xml"
		;;

	--ports)
		params+=(--top-ports 50)
		;;

	--tcp)	params+=()
		;;

	--vuln) params+=(--script vuln)
		;;
		
	esac
done

params=(--webxml -oX ${out})

echo "Target    : $target"
echo "File Name : $out"
echo "Params    : ${params[@]}"

nmap ${params[@]} $target
