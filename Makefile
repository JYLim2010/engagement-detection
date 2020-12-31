install:
	python3 -m pip install -r requirements.txt
	chmod u+x scripts/getdata.sh
	scripts/getdata.sh
hide:
	chmod u+x scripts/editconstant.sh
	scripts/editconstant.sh hide
show:
	chmod u+x scripts/editconstant.sh
	scripts/editconstant.sh show
submodule:
	git submodule update --remote --merge
	git add engagement-submodule
	git commit -m "Updated Engagement-Detection Submodule to Latest Commit"
	git push
