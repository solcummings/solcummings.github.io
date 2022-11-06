#!/bin/bash/

out_file=index.md

cat \
    ./topics/heading.md \
    ./topics/awards.md \
    ./topics/presentations.md \
    ./topics/interviews.md \
> ./$out_file

# add publications from bib file
echo '## Publications
```tex' >> ./$out_file
cat ./bib/egbib.bib >> ./$out_file
echo '```' >> ./$out_file
