@extends('layouts.main')

@section('container')
<div class="row justify-content-center">
  <div class="col-md-5">
    <main class="form-registration">
      <h1 class="h3 mb-3 fw-normal text-center">Registration Form</h1>
    <form action="/register" method="POST">
    @csrf
        <div class="form-floating">
          <input type="text" name="name" class="form-control rounded-top @error('name') is-invalid @enderror" id="name" placeholder="name" value="{{ old('name') }}">
          <label for="floatingInput">Name</label>
        @error('name')
        <div class="invalid-feedback">
          {{  $message  }}
        @enderror
        </div>
       
        <div class="form-floating">
          <input type="text" name="username" class="form-control @error('username') is-invalid @enderror" id="username" placeholder="username" value="{{ old('username') }}">
          <label for="floatingInput">Username</label>
        @error('username')
        <div class="invalid-feedback">
          {{  $message  }}
        @enderror
        </div>

        <div class="form-floating">
          <input type="email" class="form-control  @error('email') is-invalid @enderror" name="email" id="email" placeholder="email" value="{{ old('email') }}">
          <label for="email">Email address</label>
        @error('email')
        <div class="invalid-feedback">
          {{  $message  }}
        @enderror
        </div>

        <div class="form-floating">
          <input type="password" name="password" class="form-control rounded-bottom @error ('password') is-invalid @enderror" id="password" placeholder="Password">
          <label for="password">Password</label>
        @error('password')
        <div class="invalid-feedback">
          {{  $message  }}
        @enderror
        </div>
        <button class="w-100 btn btn-lg btn-primary mt-3" type="submit">Register</button> 
      </form>
      <small class="d-block text-center mt-3">Already registed? <a href="/login">Login</a></small>
    </main>
  </div>
</div>
@endsection