import "scripts/config" as cfg;

let title = params[0];
let authors = params[1];

title.trim();

let title_rg = RegexCaseInsensitive(`(?P<key>(${cfg::title_rg}))`);
let authors_rg = RegexCaseInsensitive(`(?P<key>(${cfg::authors_rg}))`);
let title = title_rg.replace_all(title,"<span class=\"highlight-title\">$key</span>");

let authors = authors.map(|v|authors_rg.is_match(v));
let title = if true in authors {
    "<span class=\"highlight-title\">★</span> " + title
} else {
    "☆ " + title
};

title