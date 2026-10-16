#!/bin/bash
n=40

printf_random() {
    local color=$((31 + RANDOM % 6)) # Или $((1 + RANDOM % 255)) для 256 цветов
    printf "\e[%sm%s\e[0m" "$color" "$*"
}

for ((i=1; i<=n; i++)); do
  for ((j=1; j<=n-i; j++)); do
    printf " "
  done
  for ((j=1; j<=2*i-1; j++)); do
    printf_random "."
  done
  echo
done

for ((i=1; i<=2; i++)); do
  for ((j=1; j<=n-2; j++)); do
    printf " "
  done
  printf " ."
  echo
done
