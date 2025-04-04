#!/bin/bash
#     ____                  __        ____
#    / __ \____ ___________/ /_____ _/ / /
#   / /_/ / __ `/ ___/ ___/ __/ __ `/ / /
#  / ____/ /_/ / /__(__  ) /_/ /_/ / / /
# /_/    \__,_/\___/____/\__/\__,_/_/_/
#
# Copyright (C) 2020-present
#
# This file is part of Pacstall
#
# Pacstall is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, version 3 of the License
#
# Pacstall is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Pacstall. If not, see <https://www.gnu.org/licenses/>.

_pacstall_get_repo_urls() {
    local part split
    while read -r part; do
        if [[ -n $ZSH_NAME ]]; then
            # shellcheck disable=SC2296,SC2116
            split=(${(@f)"$(echo "${part// /$'\n'}")"})
        else
            mapfile -t split <<< "${part// /$'\n'}"
        fi
        if ((${#split[@]} == 1)); then
            echo "${split[0]}"
        elif ((${#split[@]} == 2)); then
            if [[ ${split[0]:0:1} == '[' ]]; then
                # Get the second one, the URL
                echo "${split[1]}"
            else
                # Then we just have a URL and an alias
                echo "${split[0]}"
            fi
        else
            echo "${split[1]}"
        fi
    done < /usr/share/pacstall/repo/pacstallrepo
}

_pacstall() {
    cur=${COMP_WORDS[COMP_CWORD]}
    prev=${COMP_WORDS[1]}

    if [[ "-P --disable-prompts -K --keep -B --build-only" =~ (^|[[:space:]])"$prev"($|[[:space:]]) ]]; then
        prev=${COMP_WORDS[2]}
        if [[ "-P --disable-prompts -K --keep -B --build-only" =~ (^|[[:space:]])"$prev"($|[[:space:]]) ]]; then
            prev=${COMP_WORDS[3]}
        fi
    fi

    case "$prev" in
        -'?' | --help | -v | --version)
            return
            ;;

        -?(P)S?(P) | --search)
            COMPREPLY=($(compgen -W "$(xargs -I{} echo "{}/packagelist" < <(_pacstall_get_repo_urls) | xargs -n 1 curl -s | sort -u)" -- "$cur"))
            return
            ;;

        -?(P)I?(P) | -?(K)I?(K) | -?(PK)I?(PK) | -?(KP)I?(KP) | -?(B)I?(B) | -?(BP)I?(BP) | -?(BK)I?(BK) | -?(BPK)I?(BPK) | -?(BKP)I?(BKP) | -?(PBK)I?(PBK) | -?(KBP)I?(KBP) | -?(PKB)I?(PKB) | -?(KPB)I?(KPB) | --install)
            COMPREPLY=($(compgen -W "$(xargs -I{} echo "{}/packagelist" < <(_pacstall_get_repo_urls) | xargs -n 1 curl -s | sort -u)" -- "$cur"))
            return
            ;;

        -?(P)R?(P) | --remove)
            COMPREPLY=($(compgen -W "$(command ls -1aA /var/lib/pacstall/metadata)" -- $cur))
            return
            ;;

        -?(P)Qi?(P) | --query-info)
            COMPREPLY=($(compgen -W "$(command ls -1aAp /var/lib/pacstall/metadata)" -- $cur))
            return
            ;;

        -?(P)D?(P) | --download)
            COMPREPLY=($(compgen -W "$(xargs -I{} echo "{}/packagelist" < <(_pacstall_get_repo_urls) | xargs -n 1 curl -s | sort -u)" -- "$cur"))
            return
            ;;

        -?(P)K?(P) | --keep)
            COMPREPLY=($(compgen -W "-I -Up -PI -PUp" -- "$cur"))
            return
            ;;

        -T | --tree)
            COMPREPLY=($(compgen -W "$(command ls -1aAp /var/lib/pacstall/metadata)" -- $cur))
            return
            ;;
    esac

    case "$cur" in
        --*)
            COMPREPLY=($(compgen -W '$( _parse_help "$1" )' -- "$cur"))
            return
            ;;
        -BPK*)
            COMPREPLY=($(compgen -W "-BPKI" -- "$cur"))
            return
            ;;
        -BKP*)
            COMPREPLY=($(compgen -W "-BKPI" -- "$cur"))
            return
            ;;
        -PBK*)
            COMPREPLY=($(compgen -W "-PBKI" -- "$cur"))
            return
            ;;
        -KBP*)
            COMPREPLY=($(compgen -W "-KBPI" -- "$cur"))
            return
            ;;
        -PKB*)
            COMPREPLY=($(compgen -W "-PKBI" -- "$cur"))
            return
            ;;
        -KPB*)
            COMPREPLY=($(compgen -W "-KPBI" -- "$cur"))
            return
            ;;
        -BK*)
            COMPREPLY=($(compgen -W "-BKI -BKPI" -- "$cur"))
            return
            ;;
        -KB*)
            COMPREPLY=($(compgen -W "-KBI -KBPI" -- "$cur"))
            return
            ;;
        -PB*)
            COMPREPLY=($(compgen -W "-PBI -PBKI" -- "$cur"))
            return
            ;;
        -BP*)
            COMPREPLY=($(compgen -W "-BPI -BPKI" -- "$cur"))
            return
            ;;
        -PK*)
            COMPREPLY=($(compgen -W "-PKI -PKUp -PKBI" -- "$cur"))
            return
            ;;
        -KP*)
            COMPREPLY=($(compgen -W "-KPI -KPUp -KPBI" -- "$cur"))
            return
            ;;
        -P*)
            COMPREPLY=($(compgen -W "-PK -PB -PI -PR -PUp -PKI -PKUp -PBI -PBKI" -- "$cur"))
            return
            ;;
        -K*)
            COMPREPLY=($(compgen -W "-KP -KB -KI -KUp -KPI -KPUp -KBP -KBPI" -- "$cur"))
            return
            ;;
        -B*)
            COMPREPLY=($(compgen -W "-BP -BI -BPI -BKI -BPKI" -- "$cur"))
            return
            ;;
        *)
            if [[ "-B" =~ (^|[[:space:]])${COMP_WORDS[COMP_CWORD - 1]}($|[[:space:]]) ]] || [[ "--build-only" =~ (^|[[:space:]])${COMP_WORDS[COMP_CWORD - 1]}($|[[:space:]]) ]]; then
                COMPREPLY=($(compgen -W "-P -K -I" -- "$cur"))
                return
            elif [[ "-K" =~ (^|[[:space:]])${COMP_WORDS[COMP_CWORD - 1]}($|[[:space:]]) ]] || [[ "--keep" =~ (^|[[:space:]])${COMP_WORDS[COMP_CWORD - 1]}($|[[:space:]]) ]]; then
                COMPREPLY=($(compgen -W "-B -P -I -Up" -- "$cur"))
                return
            elif [[ "-P" =~ (^|[[:space:]])${COMP_WORDS[COMP_CWORD - 1]}($|[[:space:]]) ]] || [[ "--disable-prompts" =~ (^|[[:space:]])${COMP_WORDS[COMP_CWORD - 1]}($|[[:space:]]) ]]; then
                COMPREPLY=($(compgen -W "-B -K -I -R -Up" -- "$cur"))
                return
            fi
            COMPREPLY=($(compgen -W "-I -S -R -A -U -V -L -Up -Qi -T" -- "$cur"))
            return
            ;;
    esac
} 
# vim:set ft=sh ts=4 sw=4 et:
