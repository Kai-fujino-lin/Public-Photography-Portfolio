date=$(shell date)

clean:
	rm -rf ../Public-Photography-Portfolio
	git clone git@github.com:Kai-fujino-lin/Public-Photography-Portfolio.git ../Public-Photography-Portfolio

publish-to-public:
	rsync -av --exclude private --exclude .git . ../Public-Photography-Portfolio
	cd ../Public-Photography-Portfolio; git add .
	cd ../Public-Photography-Portfolio; git status
	cd ../Public-Photography-Portfolio; git commit -m "Auto push ${date}" .
	cd ../Public-Photography-Portfolio; git push
