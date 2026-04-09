# =============================================================================
# STARTUP.SH — Štartovací skript pre Azure App Service
# =============================================================================
# Azure tento skript spustí pri štarte aplikácie.
# gunicorn = produkčný server (Flask development server sa NEPOUŽÍVA v produkcii!)
#
# --bind=0.0.0.0:8000  = počúva na porte 8000 (Azure požaduje tento port)
# --timeout 600         = timeout 10 minút
# app:app              = modul:premenná (súbor app.py, premenná app)
# =============================================================================

gunicorn --bind=0.0.0.0:8000 --timeout 600 app:app
