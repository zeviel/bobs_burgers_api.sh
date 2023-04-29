#!/bin/bash

api="https://bobsburgers-api.herokuapp.com"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36"

function get_characters() {
  # 1 - sort_by: (string): <name, id - default: name>
  # 2 - order_by: (string): <asc, desc - default: asc>
  # 3 - limit: (integer): <limit - default: 20>
  # 4 - skip: (integer): <skip - default: 0>
  # 5 - hair_color: (string): <hairColor>
  # 6 - id: (integer): <id>
  curl --request GET \
    --url "$api/characters/?sortBy=${1:-name}&orderBy=${2:-asc}&limit=${3:-20}&skip=${4:-0}&hairColor=${5}&id=${6}" \
    --user-agent "$user_agent" \
    --header "content-type: application/json"
}

function get_character_by_id() {
  # 1 - id: (integer): <id>
  curl --request GET \
    --url "$api/characters/$1" \
    --user-agent "$user_agent" \
    --header "content-type: application/json"
}

function get_multiple_characters() {
  # 1 - ids: (array): <[id, id, id, ...]>
  curl --request GET \
    --url "$api/characters/${1:1:-1}" \
    --user-agent "$user_agent" \
    --header "content-type: application/json"
}

function get_episodes() {
  # 1 - airDate: (string): <airDate>
  # 2 - limit: (integer): <limit - default: 20>
  # 3 - skip: (integer): <skip - default: 0>
  curl --request GET \
    --url "$api/episodes/?airDate=$1&limit=${2:-20}&skip=${3:-0}" \
    --user-agent "$user_agent" \
    --header "content-type: application/json"
}

function get_episode_by_id() {
  # 1 - id: (integer): <id>
  curl --request GET \
    --url "$api/episodes/$1" \
    --user-agent "$user_agent" \
    --header "content-type: application/json"
}

function get_multiple_episodes() {
  # 1 - ids: (array): <[id, id, id, ...]>
  curl --request GET \
    --url "$api/episodes/${1:1:-1}" \
    --user-agent "$user_agent" \
    --header "content-type: application/json"
}

function get_store_next_door() {
  # 1 - id: (integer): <id>
  curl --request GET \
    --url "$api/storeNextDoor/$1" \
    --user-agent "$user_agent" \
    --header "content-type: application/json"
}

function get_store_next_doors() {
  # 1 - ids: (array): <[id, id, id, ...]>
  curl --request GET \
    --url "$api/storeNextDoor/${1:1:-1}" \
    --user-agent "$user_agent" \
    --header "content-type: application/json"
}

function get_pest_control_truck() {
  # 1 - id: (integer): <id>
  curl --request GET \
    --url "$api/pestControlTruck/$1" \
    --user-agent "$user_agent" \
    --header "content-type: application/json"
}

function get_pest_control_trucks() {
  # 1 - ids: (array): <[id, id, id, ...]>
  curl --request GET \
    --url "$api/pestControlTruck/${1:1:-1}" \
    --user-agent "$user_agent" \
    --header "content-type: application/json"
}

function get_end_credit_sequence() {
  # 1 - id: (integer): <id>
  curl --request GET \
    --url "$api/endCreditsSequence/$1" \
    --user-agent "$user_agent" \
    --header "content-type: application/json"
}

function get_end_credit_sequences() {
  # 1 - ids: (array): <[id, id, id, ...]>
  --user-agent "$user_agent" \
  curl --request GET \
    --url "$api/endCreditsSequence/$1" \
    --user-agent "$user_agent" \
    --header "content-type: application/json"
}

function get_burger_of_the_day() {
  # 1 - id: (integer): <id>
  curl --request GET \
    --url "$api/endCreditsSequence/$1" \
    --user-agent "$user_agent" \
    --header "content-type: application/json"
}

function get_burgers_of_the_day() {
  # 1 - ids: (array): <[id, id, id, ...]>
  curl --request GET \
    --url "$api/endCreditsSequence/$1" \
    --user-agent "$user_agent" \
    --header "content-type: application/json"
}
