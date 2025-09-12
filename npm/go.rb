s='
/npm/internmap@2.0.3/+esm.js
/npm/d3-path@3.0.1/+esm.js
/npm/d3-array@3.2.1/+esm.js
/npm/delaunator@5.0.0/+esm.js
/npm/d3-color@3.0.1/+esm.js
/npm/d3-array@3.0.4/+esm.js
/npm/d3-format@3.0.1/+esm.js
/npm/d3-time@3.0.0/+esm.js
/npm/d3-time-format@4.0.0/+esm.js
/npm/d3-array@3.2.0/+esm.js
/npm/d3-color@3.0.1/+esm.js
/npm/d3-time@3.0.0/+esm.js 
'


s.split("\n").each{|s|
    d1 =  s
    if(d1)
        d = d1.gsub('/npm/','')
        d = d.gsub('+esm.js','')
        
        `mkdir #{d}`
        `cd #{d} && wget https://cdn.jsdelivr.net#{d1.gsub(".js","")}`
        `cd #{d} && mv '+esm' '+esm.js'`

    end
    #`mkdir #{d}`
}