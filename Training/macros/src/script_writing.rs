use std::{fs, os::unix::prelude::OpenOptionsExt, path::PathBuf};

pub fn generate_script(fastdownward_path: &PathBuf, script_path: &PathBuf) {
    if script_path.is_file() {
        return;
    }
    let content = format!(
        "
        #!/bin/bash
        # DO NOT EDIT. THIS AUTO GENERATED BY SOMEONE WHO DOESN'T KNOW HOW THIS
        # STUFF WORKS. IT MIGHT CAUSE AN EXPLOSION IN AN URBAN VILLAGE FOR SOME
        # REASON. I MEAN, I DON*T THINK IT WILL. BUT HOW CAN ONE TRULY KNOW?

        dir=`echo lama-$1 | sed 's/\\//-/g'`
        mkdir $dir
        cd $dir

        p1=$1

        if [ ${{p1:0:1}} == \"/\" ]
        then
            p2=$2
            p3=$3
        else
            p1=\"../$1\"
            p2=\"../$2\"
            p3=\"../$3\"
        fi
        
        python3 {} --alias lama-first --plan-file plan.soln $p1 $p2
        
        mv -T plan.soln $p3
       
        rm *

        cd ..
        rmdir $dir
        ",
        fs::canonicalize(fastdownward_path)
            .unwrap()
            .to_str()
            .unwrap()
    );
    match fs::OpenOptions::new()
        .create(true)
        .write(true)
        .mode(0o770)
        .open(script_path)
    {
        Ok(_) => {}
        Err(err) => panic!(
            "Could not create script to path {:?} with error {}",
            script_path, err,
        ),
    };
    match fs::write(script_path, content) {
        Ok(_) => {}
        Err(err) => panic!(
            "Could not write to script {:?} with error {}",
            script_path, err
        ),
    };
}