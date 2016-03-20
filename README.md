# GitHub Flavored Markdown Preview for TextMate 1

You can preview markdown files as seen on [GitHub](http://github.com)!

## Requirements

You need `Ruby` and `bundler` gem installed.

Also, for `rst` file support, you need python and `docutils` package. Please
install `python` from `brew`

```bash
brew install python     # this will install pyton to /usr/local/bin/
                        # this path will be added to $PATH
pip install docutils
```

## Installation

```bash
cd "~/Library/Application Support/TextMate/Bundles/"
git clone https://github.com/vigo/textmate1-github-gfm-preview.git textmate1-github-gfm-preview.tmbundle
cd textmate1-github-gfm-preview.tmbundle/
bundle install --path=vendor/bundle
```

Now you can hit `kntrl + alt + cmd + p`

## Features

### Fenced Code Blocks

    ```ruby
    require 'redcarpet'
    markdown = Redcarpet.new("Hello World!")
    puts markdown.to_html
    ```

```ruby
require 'redcarpet'
markdown = Redcarpet.new("Hello World!")
puts markdown.to_html
```

### Tables: Example 1

    | First Header  | Second Header |
    | ------------- | ------------- |
    | Content Cell  | Content Cell  |
    | Content Cell  | Content Cell  |

Output:

| First Header  | Second Header |
| ------------- | ------------- |
| Content Cell  | Content Cell  |
| Content Cell  | Content Cell  |

***

### Tables: Example 2

    | Name          | Description                 |
    | ------------- | --------------------------- |
    | Help          | ~~Display the~~ help window.|
    | Close         | _Closes_ a window           |

Output:

| Name          | Description                 |
| ------------- | --------------------------- |
| Help          | ~~Display the~~ help window.|
| Close         | _Closes_ a window           |

***

### Tables: Example 3

    | Left-Aligned  | Center Aligned  | Right Aligned |
    | :------------ |:---------------:| -------------:|
    | col 3 is      | some wordy text |         $1600 |
    | col 2 is      | centered        |           $12 |
    | zebra stripes | are neat        |            $1 |

Output:

| Left-Aligned  | Center Aligned  | Right Aligned |
| :------------ |:---------------:| -------------:|
| col 3 is      | some wordy text |         $1600 |
| col 2 is      | centered        |           $12 |
| zebra stripes | are neat        |            $1 |

***

## Screenshot

![GFM Preview](https://github.com/vigo/textmate1-github-gfm-preview/raw/master/screenshot.png)

## Known Issue

Vertical scroller (position matcher) is not working 100% as expected.

## Change Log

**2016-01-15**

* fixed: Vertical position matcher support

**2016-01-14**

* added: Syntax hightlighting support

**2016-01-12**

* added: Vertical position matcher support

**2016-01-09**

* changed: Right now, this is an individual command! Quit using Webpreview
feature of TextMate1.

**2015-11-25**

* Added: `.rst` file support!
* Removed: Buggy `scroll_to` thing. Will work on it later

**2015-11-19**

* First commit!

***

## Credits

* [GitHub CSS](https://github.com/sindresorhus/github-markdown-css)

***

## Contributer(s)

* [Uğur "vigo" Özyılmazel][vigo] - Creator, maintainer

## License

This project is licensed under MIT.

***

## Contribute

If you are still using **TextMate1** like me, please do not hesitate to contribute
this mini bundle :)

1. `fork` (https://github.com/vigo/textmate1-github-gfm-preview/fork)
2. Create your `branch` (`git checkout -b my-features`)
3. `commit` yours (`git commit -am 'added killer options'`)
4. `push` your `branch` (`git push origin my-features`)
5. Than create a new **Pull Request**!


[vigo]: http://ugur.ozyilmazel.com "Official Homepage"