install_chrome_extension () {
  preferences_dir_path="/opt/google/chrome/extensions"
  pref_file_path="$preferences_dir_path/$1.json"
  upd_url="https://clients2.google.com/service/update2/crx"
  mkdir -p "$preferences_dir_path"
  echo "{" > "$pref_file_path"
  echo "  \"external_update_url\": \"$upd_url\"" >> "$pref_file_path"
  echo "}" >> "$pref_file_path"
  echo Added \""$pref_file_path"\" ["$2"]
}



install_chrome_extension "cjpalhdlnbpafiamejdnhcphjbkeiagm" "ublock origin"
install_chrome_extension "gfbliohnnapiefjpjlpjnehglfpaknnc" "surfing keys"
install_chrome_extension "jnjfeinjfmenlddahdjdmgpbokiacbbb" "quick tabs (searching)"
install_chrome_extension "gmpnnmonpnnmnhpdldahlekfofigiffh" "open tabs next to current"
install_chrome_extension "aomjjhallfgjeglblehebfpbcfeobpgk" "1password"