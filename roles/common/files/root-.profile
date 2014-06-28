if [ "$BASH" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi

mesg n

echo
echo "--- dernières modifications:"
echo
cat /root/README.root
