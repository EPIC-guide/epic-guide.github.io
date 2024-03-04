---
layout: post
title: "EPFL infrastructure"
category: middle
order: 20
---

_Fun fact: the name of the Tequila authentication system is a French pun: "T'es qui, là ?"_


## Rooms, occupancy, and booking

If you need the map of a room, find it on plan.epfl.ch and scroll down in its properties,
many have a link to the PDF map, e.g., [INM 10](https://drive.google.com/file/d/1BZabMh94xFvEpX9V99plML8tvsak1hEi/view).

You can view any IC room's booking status: [https://occupancy.epfl.ch/bc420](https://occupancy.epfl.ch/bc420) (replace bc420 by the room name, note that BC 07 and 08 are a single "bc07-08" room).

The full list of IC rooms is [here](https://inside.epfl.ch/ic/rooms-infrastructure/).

* You can book **conference rooms** yourself. This includes the commonly-used BC 4X0, BC X29, and BC X33. Go to [webmail.epfl.ch](https://webmail.epfl.ch), open the calendar, and create an event with the room you want. You'll get a confirmation email.
* You can book **classrooms** such as BC 01/2/3/4 and INM 200/1/2/3 through this form: [https://isa.epfl.ch/imoniteur_ISAP/!formInscrs.connection?ww_c_formulaire=FORMULAIRE_RESERVATION_SALLE_NEW](https://isa.epfl.ch/imoniteur_ISAP/!formInscrs.connection?ww_c_formulaire=FORMULAIRE_RESERVATION_SALLE_NEW) 
* You can book **computer rooms** such as INF 1/2/3 by email to [IC-CalendarAdmin@groupes.epfl.ch](mailto:IC-CalendarAdmin@groupes.epfl.ch).

If [plan.epfl.ch](https://plan.epfl.ch) doesn't have enough detail for you, try the "Pro" layers on [geoportail.epfl.ch](https://geoportail.epfl.ch/). You can get an absurd amount of detail, up to the exact ID of Ethernet plugs and which VLAN they belong to. Speaking of networking, for tons of info, [https://network.epfl.ch/epnet/annumach/annu.pl](https://network.epfl.ch/epnet/annumach/annu.pl) is your friend.


## Display name and email

Do you go by a nickname or short name? Are you tired of your extra given/family names showing up everywhere even though you've never used them?

Go to your [people.epfl.ch](https://people.epfl.ch/) page, select "Edit profile" in the top right, then click on the pencil icon next to your name and "Change/define usual name and firstname".
_As of writing this, it works for short names and removing extra given/family names; anything else may or may not be accepted._

You can also edit your email address by going to [https://ewa.epfl.ch/tools/modify_email.aspx](https://ewa.epfl.ch/tools/modify_email.aspx).


## Mailing lists

Need an easy way to send email to a bunch of people? Create a group on [groups.epfl.ch](https://groups.epfl.ch)!

You can add whoever you want, let people add themselves if you want, be notified of when people add themselves,
delegate member management, and have a mailing list for the group, visible outside EPFL or not as you wish.

Need to include a non-EPFL person in there? Create a guest on [guests.epfl.ch](https://guests.epfl.ch) with that person's email (the password is irrelevant, it won't be used),
this will give you a SCIPER identifier starting with ‘G', add that to your group.

Need a mailing list for an EPFL unit such as a lab, or an EPFL set such as all professors in a specific faculty? You're in luck, those already exist.
For instance, `professeurs.ic` is all professors in IC, and `personnel.lauzhack` is all people in the LauzHack association.
To browse lists in general, e.g. by lab, building, affiliation, etc., you can go to [https://cadiwww.epfl.ch/listes](https://cadiwww.epfl.ch/listes). 

You can also go to someone's [people.epfl.ch](https://people.epfl.ch) page, click on "Administrative data", log in, then "Automatic distribution lists for..." and you'll see the auto-generated mailing lists they're in, or do it yourself from a SCIPER, e.g., https://cadiwww.epfl.ch/listes?sciper=353675.

Some of the bigger auto-generated lists are moderated, one does not simply send any random email to all students.
For instance, `personnel.ic` lets you send an email to all IC staff including PhD students, and its moderators will typically approve announcements for talks, new courses, and so on.


## Printing & Scanning

Don't bother installing printers, use [campus.epfl.ch](https://campus.epfl.ch) instead.

For maximal tree-killing throughput if you need to, find a black&white-only printer, they're faster.

Scan batches of documents at once by inserting them at the top of the printer, then selecting "Send to Myself", optionally the two-sided settings if your papers are two-sided, and "Start".


## Packages, mail, and deliveries

EPFL technically has the single address "Route Cantonale, 1015 Lausanne", which is not useful for mail purposes. Instead, there are postal stations all over EPFL; IC's station is 14.

Find your address on your [people.epfl.ch](https://people.epfl.ch) page, and copy/paste it exactly as written.
It is particularly important to have your unit name (e.g., "DSLAB"), the station (e.g., "Station 14"), and the office number (e.g., "INN 328").

Letters and packages from the Swiss Post are delivered to the station itself, for IC that's [INM 028](https://plan.epfl.ch//?room==INM%20028).
In there you'll find your lab's mail box, your lab's packages box, a large cupboard for packages too big for lab boxes, and a large cupboard for packages ordered from Lyreco's EPFL catalog by your admin.

Private delivery companies like DHL will deliver to your office instead, or to whoever is around if you're not there.
(Forget about signatures, anyone can sign for anyone and often they don't even ask to sign)

If you want to order food deliveries such as pizza, the easiest option is to direct them to the BC entrance by specifying "Chemin Alan Turing"
and indicating the GPS coordinates 46.519071, 6.561887 in special delivery instructions. Note that for Dieci pizza, their website doesn't accept arbitrary addresses,
but putting "EPFL" as the street, "BC" as the street number, and the GPS coords in delivery instructions works.

For larger deliveries, you'll want to use the area in front of INJ instead, on Route J-D Colladon.


## Camipro cards and access

There are two kinds of readers: "online" ones, usually white bricks such as the BC entrance, and "offline" ones, usually black locks such as the BC410 door.

Online readers ask a central server whether you are allowed to enter, thus any changes in your access rights are immediate.

Offline readers read your Camipro to check if you have access to that specific reader,
thus you must tap your card against a Camipro machine's updating dongle after being granted any rights in order for those rights to propagate.

Normally the dongle flashes blue then green; if it flashes red, retrying usually works fine.

You need to do this every few months, as offline accesses have an expiration date for security; you'll receive an email reminding you of this when the date arrives.

Camipro machines also let you insert your card and rewrite the expiry date; this does not update your rights, and is only useful to present your card outside of EPFL to get student-related discounts.

Check your Camipro rights on [https://mycamipro.epfl.ch/client/seracc](https://mycamipro.epfl.ch/client/seracc).


## Trash

Need to dispose of something bigger or weirder than what the usual recycling points can handle?
Try the IC trash room, [INM 093.5](https://plan.epfl.ch//?room==INM%20093.5).
In addition, next to it is a "help yourself" point where you can leave stuff that's still usable but you just don't want any more, and take whatever others have left.
There is also a smaller trash room for IC in [BC 902](https://plan.epfl.ch/?room==BC%20902).

If that's not enough, EPFL's main trash collection point is below Esplanade, where you can recycle all kinds of things including wood.

Note that "paper" and "cardboard" are two different kinds of trash, and cardboard must always, always, always be folded flat before being put into a container.

Lyreco cardboard boxes should be returned intact to the mail room, not trashed.


## Webcam and headset

Still have an old phone? Exchange it for a webcam and headset to use with Jabber [here](https://support.epfl.ch/epfl?id=epfl_sc_cat_item&sys_id=733e40414f3c43809d2bdf601310c73f).


## Markdown in Moodle

Moodle's default WYSIWYG editor isn't everyone's cup of tea.

Go to your Moodle profile > Editor preferences and select "Plain text area".

Then, when you write a message, pick Markdown in the format options.


## LDAP

Need more information than people.epfl.ch can provide? Want to search for details? Convert a SCIPER to a GASPAR?
Use the `ldapsearch` command-line tool on [ldap.epfl.ch](ldap.epfl.ch), e.g., `ldapsearch -h ldap.epfl.ch -b 'o=epfl,c=ch' -LLL -x uniqueIdentifier=SCIPER`.


## File storage

All IC personnel have a personal directory on two network file systems. Both support NFS and CIFS/SMB, although the latter is infinitely easier to use in practice.

**MyNAS** is general-purpose space. All EPFL personnel have 25 GB by default. You can mount your remote directory by installing the `cifs-utils` and `keyutils` packages then running
`sudo mount.cifs //files<X>.epfl.ch/data/<gaspar> -o user=<gaspar>,uid=<local-UID>,gid=<local-GID>,dir_mode=0700,dynperm,vers=3.1.1,sec=ntlm  /local/mount/point`
(replace `<X>` with the server number indicated at [mynas.epfl.ch](https://mynas.epfl.ch), `<gaspar>` with your GASPAR username,
and `<local-UID>` & `<local-GID>` with the UID and GID of the user on your machine who should have access to the mounted directory;
you can change `dir_mode` and additionally `file_mode` for finer control of local permissions)

MyNAS also supports WebDAV which is good because it lets you use it for Zotero file storage (which is only 300 MB by default on free accounts).

**icfiler** is meant for use within iccluster but can also be used independently.
This seems to only be accessible to IC personnel, and each user seems to have 16 GB, but this may be inaccurate. You can mount your remote directory with
`sudo mount.cifs //icfiler<X>.epfl.ch/<gaspar> -o user=<gaspar>,uid=<local-UID>,gid=<local-GID>,dir_mode=0700,dynperm /local/mount/point`
(replace `<X>` with the server number indicated at [cadiwww.epfl.ch](https://cadiwww.epfl.ch), `<gaspar>` with your GASPAR username,
and `<local-UID>` & `<local-GID>` with the UID and GID of the user on your machine who should have access to the mounted directory;
you can change `dir_mode` and additionally `file_mode` for finer control of local permissions)

Labs and units also have access to / can request NAS space up to 1 TB by default.
For more details, contact your IT manager, or check if you have access at [portal-xaas.epfl.ch](http://portal-xaas.epfl.ch).

All EPFL affiliates also have access to 100 GB of personal space on [SWITCHdrive](https://drive.switch.ch/index.php),
a cloud storage platform for Swiss universities hosted in Switzerland, and [SWITCHfilesender](https://filesender.switch.ch),
a temporary file sharing platform for, e.g., letting someone else download a large file.
