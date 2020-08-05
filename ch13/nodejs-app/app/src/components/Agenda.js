import React from 'react';
import MaterialTable from 'material-table'

function Agenda() {
    const [state] = React.useState({
        columns: [
            { title: 'Start', field: 'session_start', type: 'datetime' },
            { title: 'End', field: 'session_end', type: 'datetime' },
            { title: 'Description', field: 'title' },
            {
                title: 'Speaker',
                render: rowData => rowData.speaker_first_name ? rowData.speaker_first_name + ' ' + rowData.speaker_last_name : '-'
            },
            { title: 'Location', field: 'location' },
        ]
    });

    return (
        <MaterialTable
            title="Agenda"
            columns={state.columns}
            data={query =>
                new Promise((resolve, reject) => {
                    let url = window.env.ACC_SCHEDULE_URL;
                    fetch(url)
                        .then(response => response.json())
                        .then(result => {
                            resolve({
                                data: result.items
                            });
                        });
                })
            }
            options={{
                paging: false,
                search: false
            }}
        />
    );
}

export default Agenda;