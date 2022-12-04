import "scripts/config" as cfg;
let comment = params[0];

let meetings_rg = Regex(`(?P<key>(${cfg::meetings_rg}))`);

if comment != () {
    let meeting = meetings_rg.find(comment);
    let meeting = meeting.text;

    let meeting = if meeting != "" {
        "<span class=\"chip\">" + meeting + "</span>"
    } else {
        ""
    };

    meeting
} else {
    ""
}

