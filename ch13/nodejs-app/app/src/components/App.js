import React from 'react';
import { Container, Box, makeStyles } from '@material-ui/core';
import Agenda from './Agenda';
import ButtonAppBar from './ButtonAppBar';

const useStyles = makeStyles(theme => ({
  offset: theme.mixins.toolbar
}));

function App() {
  const classes = useStyles();

  return (
    <Container maxWidth="lg">
      <ButtonAppBar />
      <div className={classes.offset}/>
      <div>
        <Box component="div" display="block" m={4}>
          Welcome to the Always Cloud Conference!
        </Box>
        <Agenda className={classes.offset} />
      </div>
      <footer>
        <div class="content">
          Built with Node.js. Running on {window.env.DOCKER_HOST}.
        </div>
      </footer>
    </Container>
  );
}

export default App;
