HELM != helm3


dep_update:
	${HELM} dependency update .

install: dep_update
	${HELM} install ogscloud .

clean:
	${HELM} uninstall ogscloud || /bin/true
	rm -rf charts/* || /bin/true

upgrade:
	${HELM} upgrade ogscloud .
