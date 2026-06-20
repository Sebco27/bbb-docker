function load_env {
    export $(cat .env | sed 's/#.*//g' | grep -v "WELCOME_FOOTER" | grep -v "WELCOME_MESSAGE" | xargs)
}

function ensure_submodules {
    MISSING_SUBMODULES=$(git submodule status | grep -v ' (' |  awk '{print $2}' || /bin/true)
    echo 
    if [ ! -z "$MISSING_SUBMODULES" ]; then
        echo "Submodules missing, initializing them now..."
        git submodule update --init
        echo "Submodules initialized."
    fi
    
}

# this file should exist, otherwise it is created by docker
# with the wrong permissions
function ensure_bbbhtml5yml {
    if [ ! -f conf/bbb-html5.yml ]; then

        cat << EOF > conf/bbb-html5.yml
# this file equals the /etc/bigbluebutton/bbb-html5.yml file referenced in the docs
public:
  app:
    appName: BigBlueButton HTML5 Client (docker)
EOF
    fi
}
