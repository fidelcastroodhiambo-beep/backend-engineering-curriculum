from app.main import health

if __name__ == '__main__':
    response = health()
    if response.get('status') != 'ok':
        raise SystemExit('Python smoke check failed')
    print('Python starter smoke: ok')
