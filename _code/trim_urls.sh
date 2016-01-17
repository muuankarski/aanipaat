#!/bin/bash

oldstring='href="/books'
newstring='href="http://koti.kapsi.fi/~muuankarski/fao/RSPB15/web/books'
grep -rl $oldstring /home/markus/btsync/faosync/pocketbooks/pocketbook_web/_site | xargs sed -i s@$oldstring@$newstring@g


oldstring='href="/"'
newstring='href="http://koti.kapsi.fi/~muuankarski/fao/RSPB15/web/"'
grep -rl $oldstring /home/markus/btsync/faosync/pocketbooks/pocketbook_web/_site | xargs sed -i s@$oldstring@$newstring@g

oldstring='src="/logo'
newstring='src="http://koti.kapsi.fi/~muuankarski/fao/RSPB15/web/logo'
grep -rl $oldstring /home/markus/btsync/faosync/pocketbooks/pocketbook_web/_site | xargs sed -i s@$oldstring@$newstring@g
