function mavenCoordinates {
    local POM=$1
    if [[ -z ${POM} ]]; then
        POM="pom.xml"
    fi
    if [[ -f ${POM} ]]; then
        local GROUP_ID=$(xmllint --xpath "/*[local-name()='project']/*[local-name()='groupId']/text()" ${POM} 2>/dev/null)
        if [[ -z ${GROUP_ID} ]]; then
            GROUP_ID=$(xmllint --xpath "/*[local-name()='project']/*[local-name()='parent']/*[local-name()='groupId']/text()" ${POM} 2>/dev/null)
        fi
        local ARTIFACT_ID=$(xmllint --xpath "/*[local-name()='project']/*[local-name()='artifactId']/text()" ${POM})
        local VERSION=$(xmllint --xpath "/*[local-name()='project']/*[local-name()='version']/text()" ${POM})
        local PACKAGING=$(xmllint --xpath "/*[local-name()='project']/*[local-name()='packaging']/text()" ${POM} 2>/dev/null)
        if [[ "${PACKAGING}" == "content-package" ]]; then
            TYPE="zip"
        else
            TYPE="jar"
        fi
        cat <<EOF
Maven Coordinates:  ${GROUP_ID}:${ARTIFACT_ID}:${TYPE}:${VERSION}
Provisioning model: ${GROUP_ID}/${ARTIFACT_ID}/${VERSION}/${TYPE}
<dependency>
    <groupId>${GROUP_ID}</groupId>
    <artifactId>${ARTIFACT_ID}</artifactId>
    <version>${VERSION}</version>
    <type>${TYPE}</type>
</dependency>
{code:xml}
    <groupId>${GROUP_ID}</groupId>
    <artifactId>${ARTIFACT_ID}</artifactId>
    <version>${VERSION}</version>
    <type>${TYPE}</type>
{code}
EOF
    fi
    
}

function internalReleaseVersion {
    local POM=$1
    if [[ -z ${POM} ]]; then
        POM="pom.xml"
    fi
    if [[ -f ${POM} ]]; then
        local VERSION=$(xmllint --xpath "/*[local-name()='project']/*[local-name()='version']/text()" ${POM})
        local GITINFO="`git log -n1 --format=T"%cd-%h" --date=format:'%Y%m%d%H%M%S'`"
        local INTERNAL_RELEASE_VERSION="`echo ${VERSION} | sed -e 's/SNAPSHOT//'`${GITINFO}"
        echo $INTERNAL_RELEASE_VERSION
    fi
}

alias mvninfo=mavenCoordinates
alias mvnsi='mvn clean install sling:install'
alias mvncpi='mvn clean install content-package:install'
alias mvnir=internalReleaseVersion
