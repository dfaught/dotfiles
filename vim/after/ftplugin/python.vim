
setlocal keywordprg=pydoc
setlocal formatprg=autopep8\ -
setlocal makeprg=pylint\ --reports=n\ --output-format=parseable\ %:p
