# GitHub Flavored Markdown Preview for TextMate 1

You can preview markdown files as seen on [GitHub](http://github.com)!

## Requirements

You need to install [Rbenv](https://github.com/sstephenson/rbenv). Enable
`rbenv`, install any version of Ruby (*1.9+*). Activate your version;

    rbenv global YOUR_VERSION

Then install require `gems`:

    gem install github-markup redcarpet kramdown

Also, for `rst` file support, you need python and `docutils` package. Please
install `python` from `brew`

    brew install python     # this will install pyton to /usr/local/bin/
                            # this path will be added to $PATH
    pip install docutils

## Installation

    cd "~/Library/Application Support/TextMate/Bundles/"
    git clone https://github.com/vigo/textmate1-github-gfm-preview.git
    ln -s ~/Library/Application\ Support/TextMate/Bundles/textmate1-github-gfm-preview.tmbundle/WebPreview/github-gfm ~/Library/Application\ Support/TextMate/Themes/WebPreview/

Now you can hit `kntrl+alt+cmd+p`

## Screenshot

![GFM Preview](https://github.com/vigo/textmate1-github-gfm-preview/raw/master/screenshot.png)

## Credits

* [GitHub CSS](https://github.com/sindresorhus/github-markdown-css)

## Contribute

If you are still using **TextMate1** like me, please do not hesitate to contribute
this mini bundle :)

1. `fork` (https://github.com/vigo/textmate1-github-gfm-preview/fork)
2. Create your `branch` (`git checkout -b my-features`)
3. `commit` yours (`git commit -am 'added killer options'`)
4. `push` your `branch` (`git push origin my-features`)
5. Than create a new **Pull Request**!

---

## Change Log

**2015-11-25**

* Added: `.rst` file support!

**2015-11-19**

* First commit!

