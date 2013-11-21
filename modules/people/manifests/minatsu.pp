class people::minatsu {
  include osx::dock::autohide
  # Miscellaneous
  include osx::no_network_dsstores # disable creation of .DS_Store files on network shares
  include osx::global::enable_keyboard_control_access

  # via homebrew
  package {
    [
      'tmux',
      'reattach-to-user-namespace', # use tmux to clipbord
      'tree',
      'tig',
      'xz',
      'binutils',
      'coreutils',
      'wget',
      'nkf',
      'unar',
      'graphviz'
    ]:
  }
  package {
    'weechat':
      install_options => [
        '--with-perl',
        '--with-ruby',
        '--with-python'
      ]
  }

  # alfred
  include alfred

  # keyremap4macbook
  include keyremap4macbook
  include keyremap4macbook::login_item
  keyremap4macbook::remap{ 'jis_yen2backslash': }
  keyremap4macbook::remap{ 'jis_unify_eisuu_to_kana': }

  # chrome from the beta channel
  include chrome::beta

  # appcleaner
  include appcleaner

  # iterm2
  include iterm2::dev

  # spectacle
  include spectacle

  # intellij
  class { 'intellij':
    edition => 'ultimate',
    version => '132.839'
  }

  # dropbox
  include dropbox

  # macvim-kaoriya
  include macvim_kaoriya

  # java
  include java

  # vmware-fusion
  include vmware_fusion

  # pycharm
  class { 'pycharm':
    edition => 'professional',
    version => '3.0.1'
  }

  # pyenv
  include python

  # onyx
  package { 'Onyx-2.8.1':
    provider => 'appdmg',
    source   => 'http://joel.barriere.pagesperso-orange.fr/dl/109/OnyX.dmg',
  }

  # ms office
  package { 'msoffice':
    provider => 'appdmg',
    source   => '/tmp/OFFICE_STD_JPN_1400_100825.DMG',
  }

  # google ime
  package { 'GoogleJapaneseInput':
    provider => 'pkgdmg',
    source => 'http://dl.google.com/japanese-ime/latest/GoogleJapaneseInput.dmg',
  }

  # chromium
  package { 'chromium':
    provider => 'compressed_app',
    source => 'https://commondatastorage.googleapis.com/chromium-browser-snapshots/Mac/236160/chrome-mac.zip',
  }

  # xtrafinder
  package { 'xtrafinder':
    provider => 'pkgdmg',
    source => 'http://www.trankynam.com/xtrafinder/downloads/XtraFinder.dmg',
  }

}

