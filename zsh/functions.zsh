# switch Java versions
jdk() {
        version=$1
        export JAVA_HOME=$(/usr/libexec/java_home -v"$version");
        java -version
 }

uz(){
  antibody bundle < ./zsh/.plugins.txt > ./zsh/.plugins.sh
  antibody update
}