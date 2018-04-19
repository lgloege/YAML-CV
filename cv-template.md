# $contact.name$
### $contact.title$ - $contact.institution$
### $contact.postal-address$
### $contact.email$
### $contact.website$

# Education
$for(education)$
+ $education.year$ - $education.program$, $education.university$, $education.city$
$endfor$

# Presentations
$for(presentations)$
+ $presentations.date$ - $presentations.conference$, $presentations.location$
    + $presentations.type$, "$presentations.title$"
$endfor$

# Professional Development
$for(development)$
+ $development.year$ - $development.program$, $development.location$
$endfor$

# Teaching
$for(teaching)$
+ $teaching.year$ - $teaching.type$, $teaching.university$, $teaching.department$
$endfor$
