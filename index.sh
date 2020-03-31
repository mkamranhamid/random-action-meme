file_name=./README.md
response_url=$(curl -s https://meme-api.herokuapp.com/gimme | jq -r '"### `"+.title+"`\n"+"!["+.title+"](" + .url +")"')

if [[ -z "$response_url" ]]; then
   $response_url="https://media.giphy.com/media/YyKPbc5OOTSQE/giphy.gif"
fi

printf "\n$response_url" >> $file_name

echo $response_url
# curl -s "http://api.icndb.com/jokes/random" | jq '.value.joke'