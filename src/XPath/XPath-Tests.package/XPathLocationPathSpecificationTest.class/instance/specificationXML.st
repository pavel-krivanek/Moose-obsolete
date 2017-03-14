source XML
specificationXML
	"adapted from the DocBook article example in #docBookArticleSource and
	expanded so every XPath expression tested will have a non-empty result
	for at least one context node in the DOM-parsed document"
	^ '
	<doc lang="en">
		<chapter name="Chapter 1">
			<title>Introduction</title>
			<section>
				<para>Pharo''s goal is to deliver a clean, innovative, free open-source environment. Here is the to be revised Pharo vision document.</para>
				<para>By providing a stable and small core system, excellent developing tools, and maintained releases, Pharo is an attractive platform to build and deploy mission critical applications.</para>
				<para>Pharo fosters a healthy ecosystem of both private and commercial contributors who advance and maintain the core system and its external packages.</para>
			</section>
		</chapter>
		<chapter name="Chapter 2">
			<title>Pharo Features</title>
			<section>
				<para>Pharo has the following features:</para>
				<div>
					<olist>
						<item>A dynamic, pure object-oriented programming language in the tradition of Smalltalk</item>
						<item>An IDE (integrated development environment)</item>
						<item>A huge library and set of external packages</item>
					</olist>
				</div>
			</section>
			<section>
				<para>The goal of Pharo is to sustain and grow business.</para>
				<para type="warning">Pharo is supported by the industrial Pharo consortium.</para>
				<para type="warning">Pharo has also an association of users: Pharo association.</para>
				<para type="warning">Pharo is a work in progress.</para>
				<para type="warning">Pharo is continually evolving.</para>
				<para type="warning">Pharo is not always backwards compatible.</para>
		   </section>
		</chapter>
		<chapter name="Chapter 3" status="unfinished">
			<section>
				<figure>1</figure><figure>2</figure><figure>3</figure><figure>4</figure><figure>5</figure>
				<figure>6</figure><figure>7</figure><figure>8</figure><figure>9</figure><figure>10</figure>
				<figure>11</figure><figure>12</figure><figure>13</figure><figure>14</figure><figure>15</figure>
				<figure>16</figure><figure>17</figure><figure>18</figure><figure>19</figure><figure>20</figure>
				<figure>21</figure><figure>22</figure><figure>23</figure><figure>24</figure><figure>25</figure>
				<figure>26</figure><figure>27</figure><figure>28</figure><figure>29</figure><figure>30</figure>
				<figure>31</figure><figure>32</figure><figure>33</figure><figure>34</figure><figure>35</figure>
				<figure>36</figure><figure>37</figure><figure>38</figure><figure>39</figure><figure>40</figure>
				<figure>41</figure><figure>42</figure><figure>43</figure><figure>44</figure><figure>45</figure>
			</section>
		</chapter>
		<chapter name="Chapter 4" status="unfinished">
			<section><para>Unfinished.</para></section>
		</chapter>
		<chapter name="Chapter 5" status="unfinished">
			<section><para>Unfinished.</para></section>
			<section><para>Unfinished.</para></section>
		</chapter>
		<appendix name="Appendix 1">
			<title>Version History</title>
			<section>
				<div>
					<olist>
						<item>Pharo 1.0 was released April 15, 2010.</item>
						<item>Pharo 1.1 was released July 26, 2010.</item>
						<item>Pharo 1.2 was released March 29, 2011.</item>
						<item>Pharo 1.3 was released in August 2011.</item>
						<item>Pharo 1.4 was released in April 2012.</item>
						<item>Pharo 2.0 was released March 18, 2013.</item>
						<item>Pharo 3.0 was released in April 2014.</item>
						<item>Pharo 4.0 was released in April 2015.</item>
						<item>Pharo 5.0 was released in May 2016</item>
					</olist>
				</div>
			</section>
		</appendix>
	</doc>'