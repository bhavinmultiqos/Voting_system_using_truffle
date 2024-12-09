const Voting = artifacts.require("Voting");

module.exports = async function (callback) {
    try {
        // Get the deployed contract instance
        const voting = await Voting.deployed();
        console.log("Voting contract deployed at:", voting.address);

        // Get accounts
        const accounts = await web3.eth.getAccounts();

        // Get all candidates
        let candidates = await voting.getCandidates();
        console.log("Initial Candidates:");
        candidates.forEach((candidate, index) => {
            console.log(`Candidate ${index}: ${candidate.name} - Votes: ${candidate.voteCount}`);
        });

        // Cast a vote for the first candidate
        console.log("Casting a vote from account:", accounts[0]);
        const tx = await voting.vote(1, { from: accounts[3] });

        // Process emitted events
        tx.logs.forEach((log) => {
            if (log.event === "VoteStatus") {
                console.log(`Event Message: ${log.args.message}`);
            }
        });

        // Fetch updated candidates
        candidates = await voting.getCandidates();
        console.log("Updated Candidates:");
        candidates.forEach((candidate, index) => {
            console.log(`Candidate ${index}: ${candidate.name} - Votes: ${candidate.voteCount}`);
        });

        callback();
    } catch (error) {
        console.error("Error occurred:", error);
        callback(error);
    }
};
