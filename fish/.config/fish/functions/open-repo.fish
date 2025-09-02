function open-repo
	set REMOTE_URL (git config --get remote.origin.url)
	string match 'http*' $REMOTE_URL &> /dev/null
	if test $status -eq 0
		set REMOTE_PATH (echo $REMOTE_URL | awk -F "com/" '{print $2}' | awk -F "." '{print $1}')
	else
		set REMOTE_PATH (echo $REMOTE_URL | awk -F ":" '{print $2}' | awk -F "." '{print $1}')
	end
	set OWNER (echo $REMOTE_PATH | awk -F "/" '{print $(NF-1)}')
	set REPO (echo $REMOTE_PATH | awk -F "/" '{print $NF}')
	/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --args --profile-directory="Profile 1" "https://github.com/$OWNER/$REPO" &> /dev/null
end
