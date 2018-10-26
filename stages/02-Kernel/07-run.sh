# Do this to the WORK folder of this stage
pushd ${STAGE_WORK_DIR}

log "Copy the DTBs"

MNT_DIR="${STAGE_WORK_DIR}/mnt"
sudo cp "${STAGE_WORK_DIR}/linux/arch/arm/boot/dts/*.dtb" "${MNT_DIR}/boot/"
sudo cp "${STAGE_WORK_DIR}/linux/arch/arm/boot/dts/overlays/*.dtb*" "${MNT_DIR}/boot/overlays/"
sudo cp "${STAGE_WORK_DIR}/linux/arch/arm/boot/dts/overlays/README" "${MNT_DIR}/boot/overlays/"

#return
popd
