*** Settings ***
Library    Process
Library    String

*** Test Cases ***
Get IP Address
    ${result}=    Run Process    ipconfig    shell=True
    ${output}=    Set Variable    ${result.stdout}

    ${lines}=    Split To Lines    ${output}

    FOR    ${line}    IN    @{lines}
        IF    'IPv4' in '${line}'
            ${ip}=    Fetch From Right    ${line}    :
            ${ip}=    Strip String    ${ip}
            Log To Console    ${ip}
        END
    END