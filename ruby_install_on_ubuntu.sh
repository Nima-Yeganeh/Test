sudo apt update
sudo apt install git curl libssl-dev libreadline-dev zlib1g-dev autoconf bison build-essential libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev -y
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc
type rbenv
rbenv install -l
rbenv install 3.2.0
rbenv global 3.2.0
ruby -v
echo "gem: --no-document" > ~/.gemrc
gem install bundler
gem env home
gem install rails -v 7.0.4
rbenv rehash
rails -v
