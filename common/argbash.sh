#!/bin/bash
#
# ARG_OPTIONAL_SINGLE([exec-args],[],[])
# ARG_OPTIONAL_SINGLE([file-glob],[],[])
# ARG_OPTIONAL_REPEATED([exclude],[a],[@opt-repeated@])
# ARG_HELP([The general script's help msg])
# ARGBASH_GO()
# needed because of Argbash --> m4_ignore([
### START OF CODE GENERATED BY Argbash v2.6.1 one line above ###
# Argbash is a bash code generator used to get arguments parsing right.
# Argbash is FREE SOFTWARE, see https://argbash.io for more info
# Generated online by https://argbash.io/generate

die()
{
	local _ret=$2
	test -n "$_ret" || _ret=1
	test "$_PRINT_HELP" = yes && print_help >&2
	echo "$1" >&2
	exit ${_ret}
}

begins_with_short_option()
{
	local first_option all_short_options
	all_short_options='ah'
	first_option="${1:0:1}"
	test "$all_short_options" = "${all_short_options/$first_option/}" && return 1 || return 0
}



# THE DEFAULTS INITIALIZATION - OPTIONALS
_arg_exec_args=
_arg_file_glob=
_arg_exclude=()

print_help ()
{
	printf '%s\n' "The general script's help msg"
	printf 'Usage: %s [--exec-args <arg>] [--file-glob <arg>] [-a|--exclude <arg>] [-h|--help]\n' "$0"
	printf '\t%s\n' "-a,--exclude: @opt-repeated@ (empty by default)"
	printf '\t%s\n' "-h,--help: Prints help"
}

parse_commandline ()
{
	while test $# -gt 0
	do
		_key="$1"
		case "$_key" in
			--exec-args)
				test $# -lt 2 && die "Missing value for the optional argument '$_key'." 1
				_arg_exec_args="$2"
				shift
				;;
			--exec-args=*)
				_arg_exec_args="${_key##--exec-args=}"
				;;
			--file-glob)
				test $# -lt 2 && die "Missing value for the optional argument '$_key'." 1
				_arg_file_glob="$2"
				shift
				;;
			--file-glob=*)
				_arg_file_glob="${_key##--file-glob=}"
				;;
			-a|--exclude)
				test $# -lt 2 && die "Missing value for the optional argument '$_key'." 1
				_arg_exclude+=("$2")
				shift
				;;
			--exclude=*)
				_arg_exclude+=("${_key##--exclude=}")
				;;
			-a*)
				_arg_exclude+=("${_key##-a}")
				;;
			-h|--help)
				print_help
				exit 0
				;;
			-h*)
				print_help
				exit 0
				;;
			*)
				_PRINT_HELP=yes die "FATAL ERROR: Got an unexpected argument '$1'" 1
				;;
		esac
		shift
	done
}

parse_commandline "$@"

# OTHER STUFF GENERATED BY Argbash

### END OF CODE GENERATED BY Argbash (sortof) ### ])
# [ <-- needed because of Argbash



# ] <-- needed because of Argbash