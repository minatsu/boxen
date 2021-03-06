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
      'graphviz',
      'ufraw',
      'imagemagick',
      'exiftool',
      'nmap'
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
  #include java
  #package { 'java':
  #  provider => 'pkgdmg',
  #  source   => '/tmp/jdk-7u51-macosx-x64.dmg',
  #}

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
  #package { 'msoffice':
  #  provider => 'pkgdmg',
  #  source   => '/tmp/OFFICE_STD_JPN_1400_100825.DMG',
  #}

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

  # itsycal
  package { 'itsycal':
    provider => 'compressed_app',
    source => 'https://s3.amazonaws.com/itsycal/Itsycal.zip',
  }

  # MachOView
  package { 'machoview':
    provider => 'appdmg',
    source => 'http://jaist.dl.sourceforge.net/project/machoview/MachOView-2.4.9000.dmg',
  }

  boxen::osx_defaults { 'xcode fixed copyright':
    key => 'AppleLocale',
    domain => 'com.apple.dt.Xcode',
    value  => 'en_US',
  }

  # AppCode
  package { 'appcode':
    provider => 'appdmg',
    source => 'http://download-ln.jetbrains.com/objc/AppCode-2.5.4a.dmg',
  }

  # desquander
  package { 'desquander':
    provider => 'compressed_app',
    source => 'http://dl.dropbox.com/u/18000273/CocoaApps/Desquander1.1.zip',
  }

  # virtualbox
  package { 'virtualbox':
    provider => 'pkgdmg',
    source => 'http://download.virtualbox.org/virtualbox/4.3.8/VirtualBox-4.3.8-92456-OSX.dmg',
  }

  # docker
  include docker
}

