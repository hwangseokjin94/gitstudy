<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style type="text/css">


h1 {
	font-family: 'Exo 2', sans-serif;
	font-size: 8.5vw;
	color: white;
	padding: 5rem 0;
	text-shadow: 0px 4px 48px rgba(255,255,255,0.2);
}

.container {
	position: relative;
	display: flex;
	align-content: center;
	justify-content: center;
	background: {
		image: linear-gradient(to bottom,  #00c9ff 0%, #92fe9d 100%), url(https://images.unsplash.com/photo-1502726299822-6f583f972e02);
		blend-mode: multiply;
		size: cover;
	}
	overflow: hidden;
}

.bubbles-container {
    position: absolute;
    top: 0;
    left: 50%;
    width: 100%;
    max-width: 15rem;
    transform: translateX(-50%);
	opacity: 0.75;
	overflow: visible;
}

.bubbles {
	width: 100%;
	height: auto;
	
	circle {
		stroke: white;
		fill: none;
	}
	
	> g > g:nth-of-type(3n) circle {
		stroke: #87f5fb;
	}
	
	> g > g:nth-of-type(4n) circle {
		stroke: #8be8cb;
	}
	
}

.bubbles-large {
	overflow: visible;

	> g {
		transform: translateY(2048px);
		opacity: 0;
		will-change: transform, opacity;
	}

	g:nth-of-type(1) {
		animation: up 6.5s infinite;
		
		g {
			transform: translateX(350px);
		}

		circle {
			animation: wobble 3s infinite ease-in-out;
		}

	}
	
	g:nth-of-type(2) {
		animation: up 5.25s 250ms infinite;
		
		g {
			transform: translateX(450px);
		}

		circle {
			animation: wobble 3s infinite ease-in-out;
		}

	}
	
	g:nth-of-type(3) {
		animation: up 6s 750ms infinite;
		
		g {
			transform: translateX(700px);
		}

		circle {
			animation: wobble 3s infinite ease-in-out;
		}

	}
	
	g:nth-of-type(4) {
		animation: up 5.5s 1.5s infinite;
		
		g {
			transform: translateX(500px);
		}

		circle {
			animation: wobble 3s infinite ease-in-out;
		}

	}
	
	g:nth-of-type(5) {
		animation: up 6.5s 4s infinite;
		
		g {
			transform: translateX(675px);
		}

		circle {
			animation: wobble 3s infinite ease-in-out;
		}

	}

}

.bubbles-small {
	overflow: visible;

	> g {
		transform: translateY(2048px);
		opacity: 0;
		will-change: transform, opacity;
	}

	g circle {
		transform: scale(0);
	}

	g:nth-of-type(1) {
		animation: up 5.25s infinite;
		
		g {
			transform: translateX(350px);
		}

		circle {
			animation: wobble 3s infinite ease-in-out;
		}

	}

	g:nth-of-type(2) {
		animation: up 5.75s infinite;
		
		g {
			transform: translateX(750px);
		}

		circle {
			animation: wobble 3s infinite ease-in-out;
		}

	}

	g:nth-of-type(3) {
		animation: up 5.25s 250ms infinite;
		
		g {
			transform: translateX(350px);
		}

		circle {
			animation: wobble 3s 250ms infinite ease-in-out;
		}

	}

	g:nth-of-type(4) {
		animation: up 5.75s 325ms infinite;
		
		g {
			transform: translateX(180px);
		}

		circle {
			animation: wobble 3s 325ms infinite ease-in-out;
		}

	}

	g:nth-of-type(5) {
		animation: up 6s 125ms infinite;
		
		g {
			transform: translateX(350px);
		}

		circle {
			animation: wobble 3s 250ms infinite ease-in-out;
		}

	}

	g:nth-of-type(6) {
		animation: up 5.13s 250ms infinite;
		
		g {
			transform: translateX(650px);
		}

		circle {
			animation: wobble 3s 125ms infinite ease-in-out;
		}

	}

	g:nth-of-type(7) {
		animation: up 6.25s 350ms infinite;
		
		g {
			transform: translateX(480px);
		}

		circle {
			animation: wobble 3s 325ms infinite ease-in-out;
		}

	}
	
	g:nth-of-type(8) {
		animation: up 7s 200ms infinite;
		
		g {
			transform: translateX(330px);
		}

		circle {
			animation: wobble 3s 325ms infinite ease-in-out;
		}

	}

	g:nth-of-type(9) {
		animation: up 6.25s 233ms infinite;
		
		g {
			transform: translateX(230px);
		}

		circle {
			animation: wobble 3s 275ms infinite ease-in-out;
		}

	}
	
	g:nth-of-type(10) {
		animation: up 6s 900ms infinite;
		
		g {
			transform: translateX(730px);
		}

		circle {
			animation: wobble 2s 905ms infinite ease-in-out;
		}

	}
	
}

@keyframes wobble {
	
	33% {
		transform: translateX(-50px);
	}
	
	66% {
		transform: translateX(50px);
	}
	
}

@keyframes up {

	0% {
		opacity: 0;
	}
	
	10%, 90% {
		opacity: 1;
	}
	
	100% {
		opacity: 0;
		transform: translateY(-1024px);
	}
	
}
</style>

</head>
<body>
<div class="container">

	<div class="bubbles-container">
		<svg class="bubbles" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 701 1024" style="overflow: visible;">

        <g class="bubbles-large" stroke-width="7">
            <g>
                <g transform="translate(10 940)">
                    <circle cx="35" cy="35" r="35"/>
                </g>
            </g>
            <g>
                <g transform="translate(373 940)">
                    <circle cx="35" cy="35" r="35"/>
                </g>
            </g>
            <g>
                <g transform="translate(408 940)">
                    <circle cx="35" cy="35" r="35"/>
                </g>
            </g>
            <g>
                <g transform="translate(621 940)">
                    <circle cx="35" cy="35" r="35"/>
                </g>
            </g>
            <g>
                <g transform="translate(179 940)">
                    <circle cx="35" cy="35" r="35"/>
                </g>
            </g>
        </g>

        <g class="bubbles-small" stroke-width="4">
            <g>
                <g transform="translate(147 984)">
                    <circle cx="15" cy="15" r="15"/>
                </g>
            </g>
            <g>
                <g transform="translate(255 984)">
                    <circle cx="15" cy="15" r="15"/>
                </g>
            </g>
            <g>
                <g transform="translate(573 984)">
                    <circle cx="15" cy="15" r="15"/>
                </g>
            </g>
            <g>
                <g transform="translate(429 984)">
                    <circle cx="15" cy="15" r="15"/>
                </g>
            </g>
            <g>
                <g transform="translate(91 984)">
                    <circle cx="15" cy="15" r="15"/>
                </g>
            </g>
            <g>
                <g transform="translate(640 984)">
                    <circle cx="15" cy="15" r="15"/>
                </g>
            </g>
            <g>
                <g transform="translate(321 984)">
                    <circle cx="15" cy="15" r="15"/>
                </g>
            </g>
            <g>
                <g transform="translate(376 984)">
                    <circle cx="15" cy="15" r="15"/>
                </g>
            </g>
            <g>
                <g transform="translate(376 984)">
                    <circle cx="15" cy="15" r="15"/>
                </g>
            </g>
            <g>
                <g transform="translate(497 984)">
                    <circle cx="15" cy="15" r="15"/>
                </g>
            </g>
        </g>

    </svg>
	</div>
	
	<h1>Bubbles</h1>

</div>
</body>
</html>