#!/bin/bash

echo "reverting .jsp pages to unbundled source files."
git checkout ../src/main/webapp/WEB-INF/views/express/step2.jsp ../src/main/webapp/WEB-INF/layouts/header2.jsp ../src/main/webapp/WEB-INF/layouts/footer-cms.jsp