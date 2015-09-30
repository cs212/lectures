/**
 * Parses an email into its local, domain, and top-level domain components. Does
 * not do full email validation. The primary purpose of this class is to demo
 * unit testing.
 *
 * @see EmailParserTest
 */
public class EmailParser {
    /** Reconstructed email. */
    private String email;

    /** Local component of email; appears before the "@" at sign. */
    private String local;

    /** Domain component of the email; appears after the "@" at sign. */
    private String domain;

    /**
     * Top-level domain component of the domain; similar to the extension of a
     * file.
     */
    private String tld;

    /**
     * Initializes each component of the specified email.
     *
     * @param email
     *            email to parse into components
     * @throws IllegalArgumentException
     *             when the email cannot be parsed
     */
    public EmailParser(String email) {
        // split email into its major components
        String[] major = email.split("@");

        // make sure we only have 2 components
        // we will have more if there was more than one "@" at sign
        // we will have less if there was less than one "@" at sign
        if (major.length != 2) {
            throw new IllegalArgumentException("Email must contain exactly 1 \"@\" (at) sign.");
        }

        // grab the local and domain
        this.local = major[0].trim();
        this.domain = major[1].trim();

        // make sure both is at least one non-whitespace character
        if (local.isEmpty() || domain.isEmpty()) {
            throw new IllegalArgumentException("Local and/or domain must be at least 1 character.");
        }

        // split domain into its minor components
        // remember "." has special meaning in a regex, so we must escape it
        String[] minor = domain.split("\\.");

        // possible there is no TLD, at which point the value should be null
        if (minor.length < 2) {
            this.tld = null;
        }
        else {
            this.tld = minor[minor.length - 1].trim();
        }

        // reconstruct the email
        this.email = this.local + "@" + this.domain;
    }

    /**
     * Returns the local component of the email.
     *
     * @return local component of email
     */
    public String getLocal() {
        return local;
    }

    /**
     * Returns the domain component of the email.
     *
     * @return domain component of email
     */
    public String getDomain() {
        return domain;
    }

    /**
     * Returns the top-level domain of the email.
     *
     * @return top-level domain of email
     */
    public String getTLD() {
        return tld;
    }

    /**
     * Returns the reconstructed email from the local and domain components.
     *
     * @return reconstructed email
     */
    public String getEmail() {
        return email;
    }

    /**
     * Returns a string with all of the email components. Useful for debugging.
     *
     * @return debug output for email
     */
    public String debug() {
        return String.format("Email: %s, Local: %s, Domain: %s, TLD: %s", getEmail(), getLocal(), getDomain(),
                getTLD());
    }

    @Override
    public String toString() {
        return getEmail();
    }
}
