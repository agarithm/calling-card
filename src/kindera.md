% Kindera

> *The easy way to protect your kids online*

## Science Projects

### Hardware

Not much to say about hardware here.  My partner in the venture sourced an OEM 802.11AC wireless router manufacturer and we had them put double the RAM on the device to support our use case.  One interesting discovery along the way, though: when building a device for the user don't forget that the factory has its own needs.  We discovered late that we needed a second firmware build that supported all the test and validation required by the factory: flash all the LEDs, turn on and off the radios, support USB drive functions, etc.  Basically it exercises all features of the board in a way that demonstrates the device is flawless when connected to the test fixture.

### Firmware

The software that is flashed onto the device we consider to be firmware.  This ranges from the bootloader, Linux kernel and device drivers, to the core software that makes the Kindera router better than all the other parental control solutions.  Each one of these was an adventure.

#### Bootloader

The OEM's supplied SDK for the base board of the device had a bootloader image within, but it didn't have two important features we needed.  The first was the ability to flash a new image to the device if a specially signed device image was detected on a USB flash drive.  The second was to put the MIPS processor into dual-core mode.  So, we built our own U-Boot bootloader to meet our needs.

#### Linux Kernel

The SDK for our OEM hardware had a buggy, bloated version of OpenWRT as the base image.  I simply did not trust it to be fit for our purpose.  Instead we chose to build our own Linux kernel from scratch using the [Cross-Compile Linux From Scratch](https://clfs.org/view/clfs-embedded/mips/) playbook.  This allowed us to streamline the kernel and ensure the entire toolchain was free from any supply chain vulnerabilities.

#### Tattlescope

Most parental control filtering devices implement a DNS or web proxy server on-device and, depending on the rules, return the real DNS values for names on the internet or redirect blocked pages to some warning page on the device or service.  There are a couple of problems with this approach: the user can change their DNS server and route around the filter and get the real values from some other source.  The second problem is that it's very difficult to unblock or block a site after the first DNS lookup.  All devices and browsers cache the DNS results and don't ask again for some time later.  A bad block or a bad allow lives for a long time and they are difficult to reverse instantly.

To solve both of these problems we chose a different path.  Kindera uses a custom `libpcap` packet sniffer to capture all DNS port 53 traffic.  Tattlescope links the MAC address of the device doing the lookup and the DNS name and IP address of the result and builds a database of the sites-to-user mapping.  This is done in parallel so that the user experience is seamless and fast.  In a RabbitMQ pipeline each DNS event is added to the evaluation queue.  At this point the user has the correct DNS entry cached and available to them and Tattlescope knows enough about who is visiting which site.

The rules engine in Tattlescope receives the notification from the message queue and determines if the site should be allowed or not.  When not allowed we add a firewall rule to the device to block the traffic.  And as you may have noticed, a firewall rule can be added or removed instantly and thus we can allow the parent to instantly unblock or block any site for any device at any time.

But what about VPNs?  Or DoH?  Yes, those are interesting wrinkles.  But for both of those we offer a solution: White List Mode.  When White List Mode is turned on, all traffic is blocked unless a rule is added to permit the site.  The only way for a permit rule to be added is if the DNS was observed.  So the user is forced to send their DNS traffic in the clear over port 53.  Otherwise the traffic is blocked at the firewall by default.

#### Machine Learning Content Filter

One of the most interesting aspects of Kindera was the decision to embed a full machine learning content filter directly into the router.  Instead of relying on a static blacklist or a third-party cloud service, we built a naive Bayes classifier using Apache Mahout running on a Hadoop cluster.  The model was pre-trained on the most popular one million websites across the internet so that, out of the box, the router already had a strong sense of what typical “good” and “bad” content looked like.  This gave us a statistical, language-aware filter that could make nuanced decisions about sites that didn't neatly fit into hand-curated categories.

To keep this classifier fresh we wired it into an automated crawl-and-train pipeline.  An Apache Nutch crawler continuously discovered and fetched any website our routers encountered that had never been seen before.  Those pages were automatically classified, folded back into the training corpus, and used to build an updated model every 24 hours.  That new model was then pushed out to every Kindera router in the fleet.  The result was a dynamic, self-updating Bayesian filter running locally at the network edge, giving parents a Parental Control WiFi router that quietly improved its ability to recognize and filter inappropriate content day after day without them having to lift a finger.


### Kindera Application Software

At the other end of the Kindera experience is the parental control workflow.  As a parenting tool we wanted to make it easy to observe the real-time information about what the child is accessing on the internet from anywhere.  The Kindera device provides a full accounting of all the sites the child has visited and easy-to-use tools to allow or block the sites via a Progressive Web App hosted in the cloud.

The Kindera rules engine includes all the other parental features you would expect: Time Limits, Bed Time, Homework Time, etc.  

### Kindera Store Front and Management Console

We built A/B testing into our online storefront to sell the Kindera device, as was the fashion at the time.  And we have a management console for technical support to assist in debugging problems with devices in the field.  Automatic firmware updates are also managed from this console.

[Back](index.html)
